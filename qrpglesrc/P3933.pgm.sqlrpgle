**free

ctl-opt dftactgrp(*no);

dcl-pi P3933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2933.rpgleinc'
/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P2705.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P3933';
dsply theCharVar;
P2933();
P543();
P2705();
return;