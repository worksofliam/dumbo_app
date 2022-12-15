**free

ctl-opt dftactgrp(*no);

dcl-pi P828;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T1038') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1038 LIMIT 1;

theCharVar = 'Hello from P828';
dsply theCharVar;
P161();
P67();
P177();
return;