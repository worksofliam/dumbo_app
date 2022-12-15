**free

ctl-opt dftactgrp(*no);

dcl-pi P4755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3657.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P3563.rpgleinc'

dcl-ds T1627 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1627 FROM T1627 LIMIT 1;

theCharVar = 'Hello from P4755';
dsply theCharVar;
P3657();
P1039();
P3563();
return;