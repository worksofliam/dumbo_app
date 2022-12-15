**free

ctl-opt dftactgrp(*no);

dcl-pi P456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T607 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T607 FROM T607 LIMIT 1;

theCharVar = 'Hello from P456';
dsply theCharVar;
P43();
P133();
P361();
return;