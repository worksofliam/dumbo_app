**free

ctl-opt dftactgrp(*no);

dcl-pi P289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds T1866 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1866 FROM T1866 LIMIT 1;

theCharVar = 'Hello from P289';
dsply theCharVar;
P164();
P228();
P75();
return;