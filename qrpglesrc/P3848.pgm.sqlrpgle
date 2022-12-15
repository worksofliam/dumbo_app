**free

ctl-opt dftactgrp(*no);

dcl-pi P3848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2578.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P2709.rpgleinc'

dcl-ds T747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T747 FROM T747 LIMIT 1;

theCharVar = 'Hello from P3848';
dsply theCharVar;
P2578();
P1293();
P2709();
return;