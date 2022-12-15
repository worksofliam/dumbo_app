**free

ctl-opt dftactgrp(*no);

dcl-pi P3716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2379.rpgleinc'
/copy 'qrpgleref/P1584.rpgleinc'
/copy 'qrpgleref/P2050.rpgleinc'

dcl-ds T1764 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1764 FROM T1764 LIMIT 1;

theCharVar = 'Hello from P3716';
dsply theCharVar;
P2379();
P1584();
P2050();
return;