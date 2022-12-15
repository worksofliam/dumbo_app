**free

ctl-opt dftactgrp(*no);

dcl-pi P2986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2846.rpgleinc'
/copy 'qrpgleref/P2930.rpgleinc'
/copy 'qrpgleref/P1529.rpgleinc'

dcl-ds T881 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T881 FROM T881 LIMIT 1;

theCharVar = 'Hello from P2986';
dsply theCharVar;
P2846();
P2930();
P1529();
return;