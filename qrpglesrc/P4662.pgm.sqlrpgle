**free

ctl-opt dftactgrp(*no);

dcl-pi P4662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4282.rpgleinc'
/copy 'qrpgleref/P2590.rpgleinc'
/copy 'qrpgleref/P2382.rpgleinc'

dcl-ds T1215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1215 FROM T1215 LIMIT 1;

theCharVar = 'Hello from P4662';
dsply theCharVar;
P4282();
P2590();
P2382();
return;