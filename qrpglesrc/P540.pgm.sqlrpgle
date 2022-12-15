**free

ctl-opt dftactgrp(*no);

dcl-pi P540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P540';
dsply theCharVar;
P15();
P439();
P386();
return;