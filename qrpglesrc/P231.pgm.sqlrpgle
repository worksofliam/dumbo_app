**free

ctl-opt dftactgrp(*no);

dcl-pi P231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T481 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T481 FROM T481 LIMIT 1;

theCharVar = 'Hello from P231';
dsply theCharVar;
callp localProc();
P167();
P32();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P231 in the procedure';
end-proc;