**free

ctl-opt dftactgrp(*no);

dcl-pi P2615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P1310.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P2615';
dsply theCharVar;
P760();
P1310();
P1798();
return;