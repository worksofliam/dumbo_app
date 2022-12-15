**free

ctl-opt dftactgrp(*no);

dcl-pi P2769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P2080.rpgleinc'

dcl-ds T865 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T865 FROM T865 LIMIT 1;

theCharVar = 'Hello from P2769';
dsply theCharVar;
P1921();
P1146();
P2080();
return;