**free

ctl-opt dftactgrp(*no);

dcl-pi P4027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2269.rpgleinc'
/copy 'qrpgleref/P3326.rpgleinc'
/copy 'qrpgleref/P2331.rpgleinc'

dcl-ds T608 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T608 FROM T608 LIMIT 1;

theCharVar = 'Hello from P4027';
dsply theCharVar;
P2269();
P3326();
P2331();
return;