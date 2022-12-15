**free

ctl-opt dftactgrp(*no);

dcl-pi P4468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P4001.rpgleinc'
/copy 'qrpgleref/P4159.rpgleinc'

dcl-ds T664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T664 FROM T664 LIMIT 1;

theCharVar = 'Hello from P4468';
dsply theCharVar;
P1404();
P4001();
P4159();
return;