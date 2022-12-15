**free

ctl-opt dftactgrp(*no);

dcl-pi P1041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T1824 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1824 FROM T1824 LIMIT 1;

theCharVar = 'Hello from P1041';
dsply theCharVar;
P703();
P442();
P66();
return;