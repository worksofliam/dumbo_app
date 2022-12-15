**free

ctl-opt dftactgrp(*no);

dcl-pi P2841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P1850.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds T99 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T99 FROM T99 LIMIT 1;

theCharVar = 'Hello from P2841';
dsply theCharVar;
P535();
P1850();
P1385();
return;