**free

ctl-opt dftactgrp(*no);

dcl-pi P3738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P3613.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'

dcl-ds T328 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T328 FROM T328 LIMIT 1;

theCharVar = 'Hello from P3738';
dsply theCharVar;
P482();
P3613();
P1059();
return;