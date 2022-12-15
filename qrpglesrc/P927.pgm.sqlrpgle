**free

ctl-opt dftactgrp(*no);

dcl-pi P927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P927';
dsply theCharVar;
P745();
P467();
P152();
return;