**free

ctl-opt dftactgrp(*no);

dcl-pi P5018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1461.rpgleinc'
/copy 'qrpgleref/P2960.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T1051 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1051 FROM T1051 LIMIT 1;

theCharVar = 'Hello from P5018';
dsply theCharVar;
P1461();
P2960();
P640();
return;