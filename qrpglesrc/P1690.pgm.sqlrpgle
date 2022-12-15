**free

ctl-opt dftactgrp(*no);

dcl-pi P1690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds T1263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1263 FROM T1263 LIMIT 1;

theCharVar = 'Hello from P1690';
dsply theCharVar;
P272();
P1604();
P457();
return;