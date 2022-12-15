**free

ctl-opt dftactgrp(*no);

dcl-pi P1240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P1240';
dsply theCharVar;
P284();
P1114();
P722();
return;