**free

ctl-opt dftactgrp(*no);

dcl-pi P5337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P3918.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P5337';
dsply theCharVar;
callp localProc();
P165();
P3918();
P1798();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5337 in the procedure';
end-proc;