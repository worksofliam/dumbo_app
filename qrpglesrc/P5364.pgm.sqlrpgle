**free

ctl-opt dftactgrp(*no);

dcl-pi P5364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3662.rpgleinc'
/copy 'qrpgleref/P2676.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds theTable extname('T1602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1602 LIMIT 1;

theCharVar = 'Hello from P5364';
dsply theCharVar;
P3662();
P2676();
P558();
return;