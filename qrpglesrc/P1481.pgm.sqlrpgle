**free

ctl-opt dftactgrp(*no);

dcl-pi P1481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'

dcl-ds T330 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T330 FROM T330 LIMIT 1;

theCharVar = 'Hello from P1481';
dsply theCharVar;
callp localProc();
P571();
P1096();
P549();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1481 in the procedure';
end-proc;