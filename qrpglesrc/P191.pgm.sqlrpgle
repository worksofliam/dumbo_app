**free

ctl-opt dftactgrp(*no);

dcl-pi P191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P191';
dsply theCharVar;
callp localProc();
P33();
P45();
P92();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P191 in the procedure';
end-proc;