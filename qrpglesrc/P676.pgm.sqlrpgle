**free

ctl-opt dftactgrp(*no);

dcl-pi P676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds T89 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T89 FROM T89 LIMIT 1;

theCharVar = 'Hello from P676';
dsply theCharVar;
callp localProc();
P123();
P134();
P408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P676 in the procedure';
end-proc;