**free

ctl-opt dftactgrp(*no);

dcl-pi P4182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2811.rpgleinc'
/copy 'qrpgleref/P2936.rpgleinc'
/copy 'qrpgleref/P3847.rpgleinc'

dcl-ds T1359 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1359 FROM T1359 LIMIT 1;

theCharVar = 'Hello from P4182';
dsply theCharVar;
P2811();
P2936();
P3847();
return;