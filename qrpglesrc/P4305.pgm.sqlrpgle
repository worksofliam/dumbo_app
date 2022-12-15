**free

ctl-opt dftactgrp(*no);

dcl-pi P4305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3087.rpgleinc'
/copy 'qrpgleref/P2320.rpgleinc'
/copy 'qrpgleref/P4038.rpgleinc'

dcl-ds T1324 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1324 FROM T1324 LIMIT 1;

theCharVar = 'Hello from P4305';
dsply theCharVar;
P3087();
P2320();
P4038();
return;