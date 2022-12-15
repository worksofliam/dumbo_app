**free

ctl-opt dftactgrp(*no);

dcl-pi P43;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P43';
dsply theCharVar;
callp localProc();
P0();
P31();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P43 in the procedure';
end-proc;