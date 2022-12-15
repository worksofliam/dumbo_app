**free

ctl-opt dftactgrp(*no);

dcl-pi P2118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'

dcl-ds T1724 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1724 FROM T1724 LIMIT 1;

theCharVar = 'Hello from P2118';
dsply theCharVar;
P233();
P387();
P705();
return;