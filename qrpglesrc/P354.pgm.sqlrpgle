**free

ctl-opt dftactgrp(*no);

dcl-pi P354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds T280 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T280 FROM T280 LIMIT 1;

theCharVar = 'Hello from P354';
dsply theCharVar;
callp localProc();
P294();
P21();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P354 in the procedure';
end-proc;