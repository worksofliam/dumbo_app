**free

ctl-opt dftactgrp(*no);

dcl-pi P3253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2818.rpgleinc'
/copy 'qrpgleref/P3195.rpgleinc'
/copy 'qrpgleref/P1594.rpgleinc'

dcl-ds T423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T423 FROM T423 LIMIT 1;

theCharVar = 'Hello from P3253';
dsply theCharVar;
P2818();
P3195();
P1594();
return;