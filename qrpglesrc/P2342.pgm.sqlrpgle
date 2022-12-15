**free

ctl-opt dftactgrp(*no);

dcl-pi P2342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P678.rpgleinc'
/copy 'qrpgleref/P2231.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds T1044 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1044 FROM T1044 LIMIT 1;

theCharVar = 'Hello from P2342';
dsply theCharVar;
P678();
P2231();
P775();
return;