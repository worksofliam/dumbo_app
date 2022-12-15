**free

ctl-opt dftactgrp(*no);

dcl-pi P915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds T264 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T264 FROM T264 LIMIT 1;

theCharVar = 'Hello from P915';
dsply theCharVar;
P545();
P465();
P222();
return;