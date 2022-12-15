**free

ctl-opt dftactgrp(*no);

dcl-pi P3714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1219.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P3714';
dsply theCharVar;
callp localProc();
P1829();
P1219();
P1050();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3714 in the procedure';
end-proc;