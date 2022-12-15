**free

ctl-opt dftactgrp(*no);

dcl-pi P1438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds T1767 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1767 FROM T1767 LIMIT 1;

theCharVar = 'Hello from P1438';
dsply theCharVar;
P1246();
P1038();
P401();
return;