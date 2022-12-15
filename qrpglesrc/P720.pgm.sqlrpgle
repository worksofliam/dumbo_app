**free

ctl-opt dftactgrp(*no);

dcl-pi P720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P720';
dsply theCharVar;
P27();
P113();
P139();
return;