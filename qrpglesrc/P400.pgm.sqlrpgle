**free

ctl-opt dftactgrp(*no);

dcl-pi P400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P400';
dsply theCharVar;
P150();
P169();
P185();
return;