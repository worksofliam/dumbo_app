**free

ctl-opt dftactgrp(*no);

dcl-pi P1532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P708.rpgleinc'

dcl-ds T840 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T840 FROM T840 LIMIT 1;

theCharVar = 'Hello from P1532';
dsply theCharVar;
P1394();
P841();
P708();
return;