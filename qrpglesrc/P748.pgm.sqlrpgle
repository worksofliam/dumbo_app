**free

ctl-opt dftactgrp(*no);

dcl-pi P748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T714') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T714 LIMIT 1;

theCharVar = 'Hello from P748';
dsply theCharVar;
P683();
P710();
P31();
return;