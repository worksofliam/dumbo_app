**free

ctl-opt dftactgrp(*no);

dcl-pi P456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds T1562 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1562 FROM T1562 LIMIT 1;

theCharVar = 'Hello from P456';
dsply theCharVar;
P423();
P169();
P345();
return;