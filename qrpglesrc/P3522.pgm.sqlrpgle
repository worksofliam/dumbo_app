**free

ctl-opt dftactgrp(*no);

dcl-pi P3522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P1872.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P3522';
dsply theCharVar;
callp localProc();
P1007();
P1872();
P1836();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3522 in the procedure';
end-proc;