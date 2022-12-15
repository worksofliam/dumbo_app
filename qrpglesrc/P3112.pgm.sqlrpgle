**free

ctl-opt dftactgrp(*no);

dcl-pi P3112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2645.rpgleinc'
/copy 'qrpgleref/P3079.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds T700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T700 FROM T700 LIMIT 1;

theCharVar = 'Hello from P3112';
dsply theCharVar;
P2645();
P3079();
P90();
return;