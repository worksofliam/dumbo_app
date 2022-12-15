**free

ctl-opt dftactgrp(*no);

dcl-pi P261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P261';
dsply theCharVar;
P141();
P148();
P92();
return;