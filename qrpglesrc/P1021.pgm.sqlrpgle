**free

ctl-opt dftactgrp(*no);

dcl-pi P1021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P1021';
dsply theCharVar;
callp localProc();
P346();
P480();
P857();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1021 in the procedure';
end-proc;