**free

ctl-opt dftactgrp(*no);

dcl-pi P772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P772';
dsply theCharVar;
callp localProc();
P381();
P452();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P772 in the procedure';
end-proc;