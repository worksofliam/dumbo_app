**free

ctl-opt dftactgrp(*no);

dcl-pi P4442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2824.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'
/copy 'qrpgleref/P3995.rpgleinc'

dcl-ds T1353 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1353 FROM T1353 LIMIT 1;

theCharVar = 'Hello from P4442';
dsply theCharVar;
P2824();
P1623();
P3995();
return;