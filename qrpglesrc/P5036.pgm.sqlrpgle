**free

ctl-opt dftactgrp(*no);

dcl-pi P5036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P4309.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P5036';
dsply theCharVar;
P2440();
P4309();
P1218();
return;