**free

ctl-opt dftactgrp(*no);

dcl-pi P5301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4368.rpgleinc'
/copy 'qrpgleref/P2016.rpgleinc'
/copy 'qrpgleref/P4792.rpgleinc'

dcl-ds T399 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T399 FROM T399 LIMIT 1;

theCharVar = 'Hello from P5301';
dsply theCharVar;
callp localProc();
P4368();
P2016();
P4792();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5301 in the procedure';
end-proc;