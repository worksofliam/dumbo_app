**free

ctl-opt dftactgrp(*no);

dcl-pi P866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P866';
dsply theCharVar;
P511();
P209();
P545();
return;