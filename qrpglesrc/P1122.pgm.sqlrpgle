**free

ctl-opt dftactgrp(*no);

dcl-pi P1122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'

dcl-ds T1661 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1661 FROM T1661 LIMIT 1;

theCharVar = 'Hello from P1122';
dsply theCharVar;
P199();
P524();
P859();
return;