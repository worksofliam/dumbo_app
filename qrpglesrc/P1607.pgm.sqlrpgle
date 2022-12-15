**free

ctl-opt dftactgrp(*no);

dcl-pi P1607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds T818 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T818 FROM T818 LIMIT 1;

theCharVar = 'Hello from P1607';
dsply theCharVar;
P203();
P922();
P195();
return;