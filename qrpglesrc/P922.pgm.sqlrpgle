**free

ctl-opt dftactgrp(*no);

dcl-pi P922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T630') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T630 LIMIT 1;

theCharVar = 'Hello from P922';
dsply theCharVar;
callp localProc();
P229();
P358();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P922 in the procedure';
end-proc;