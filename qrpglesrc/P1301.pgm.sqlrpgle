**free

ctl-opt dftactgrp(*no);

dcl-pi P1301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T426') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T426 LIMIT 1;

theCharVar = 'Hello from P1301';
dsply theCharVar;
callp localProc();
P578();
P266();
P271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1301 in the procedure';
end-proc;