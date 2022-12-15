**free

ctl-opt dftactgrp(*no);

dcl-pi P4005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T580 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T580 FROM T580 LIMIT 1;

theCharVar = 'Hello from P4005';
dsply theCharVar;
P1545();
P1866();
P640();
return;