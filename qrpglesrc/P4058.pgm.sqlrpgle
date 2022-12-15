**free

ctl-opt dftactgrp(*no);

dcl-pi P4058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3723.rpgleinc'
/copy 'qrpgleref/P2833.rpgleinc'
/copy 'qrpgleref/P1529.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P4058';
dsply theCharVar;
P3723();
P2833();
P1529();
return;