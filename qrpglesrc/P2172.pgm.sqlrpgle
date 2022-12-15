**free

ctl-opt dftactgrp(*no);

dcl-pi P2172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P1778.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P2172';
dsply theCharVar;
P1188();
P1778();
P1316();
return;