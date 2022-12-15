**free

ctl-opt dftactgrp(*no);

dcl-pi P1192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P1192';
dsply theCharVar;
P802();
P531();
P622();
return;