**free

ctl-opt dftactgrp(*no);

dcl-pi P613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T1028 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1028 FROM T1028 LIMIT 1;

theCharVar = 'Hello from P613';
dsply theCharVar;
P255();
P316();
P361();
return;