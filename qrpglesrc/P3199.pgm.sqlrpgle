**free

ctl-opt dftactgrp(*no);

dcl-pi P3199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2093.rpgleinc'
/copy 'qrpgleref/P1456.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'

dcl-ds T674 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T674 FROM T674 LIMIT 1;

theCharVar = 'Hello from P3199';
dsply theCharVar;
P2093();
P1456();
P307();
return;